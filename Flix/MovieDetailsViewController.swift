//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Johana on 9/23/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    var movie: [String:Any]!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLable.text = movie["title"] as? String
        titleLable.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        // Do any additional setup after loading the view.
        let baseUrL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrL = URL(string: baseUrL + posterPath)!
        //cell.textLabel!.text = title
        posterView.af.setImage(withURL: posterUrL)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)!
        
        backdropView.af.setImage(withURL: backdropUrL)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
