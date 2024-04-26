import Foundation

// JSON dosyasından yüklenen hediyelerin tipini belirtin
var gifts: [Gift] = load("giftData.json")

// JSON dosyasını yüklemek için generic bir fonksiyon
func load<T: Decodable>(_ filename: String) -> T {
    do {
        // JSON dosyasının URL'sini alın
        guard let fileURL = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        // JSON verisini Data nesnesine yükleyin
        let data = try Data(contentsOf: fileURL)
        
        // JSON Decoder oluşturun ve veriyi belirtilen tip olarak çözümleyin
        let decoder = JSONDecoder()
        let decodedData = try decoder.decode(T.self, from: data)
        
        // Çözümlenen veriyi geri döndürün
        return decodedData
    } catch {
        // Hata durumunda uygun hata mesajını yazdırın ve programı sonlandırın
        fatalError("Error loading or parsing \(filename): \(error)")
    }
}
